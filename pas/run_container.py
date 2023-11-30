import docker

def run_html_container():
    client = docker.from_env()
    try:
        # Mulai container dari image yang telah dibuat sebelumnya
        container = client.containers.run('erion667/paspemograman3:latest', detach=True, ports={'80/tcp': 8080})
        print(f"Container {container.id} telah dijalankan dan dapat diakses pada http://localhost:8080")
    except docker.errors.APIError as e:
        print(f"Terjadi kesalahan saat menjalankan container: {str(e)}")

if __name__ == "__main__":
    run_html_container()
