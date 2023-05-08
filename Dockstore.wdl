version 1.0

task hello {
  command {
    echo 'Hello world!!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "quay.io/calico/node:v3.23.0-0.dev-417-g89b438f573e2"
  }
}

workflow test {
  call hello
 
  meta {
    author : "Test User 2"
    email : "test@dockstore.org"
    description: "This is a description!"
  }
}
