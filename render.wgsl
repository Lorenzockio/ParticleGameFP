struct VertexInput {
  @location(0) pos: vec2f,
  @builtin(instance_index) instance: u32,
};

struct VertexOutput {
  @builtin(position) position: vec4f
  @location(0) uv: vec2f,
};

struct Particle {
  pos: vec2f,
  vel: vec2f,    
};


@group(0) @binding(0) var<uniform> frame: f32;
@group(0) @binding(1) var<uniform> res:   vec2f;
@group(0) @binding(2) var<storage> state: array<Particle>;

@vertex 
fn vs( input: VertexInput ) -> VertexOutput {
  var out: VertexOutput;
  let p = state[ input.instance ];
  let size = input.pos * .15;
  let aspect = res.y / res.x;
  
  out.pos = vec4f( p.pos.x - size.x * aspect, p.pos.y + size.y, 0., 1.);
  out.uv = input.pos;
  return out;
}

@fragment 
fn fs( input: VertexOutput ) -> @location(0) vec4f {

  let dist = length( input.uv );
  if( dist > 1.0 ) { discard; }

  return vec4f(1.,0., 0., 1.);
}