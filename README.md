# Ecom API
A scalable and production-ready e-commerce backend built with modern technologies and cloud-native principles. This API handles authentication, product management, orders, payments, and background processing with a focus on performance and extensibility.
## Tech Stack
- Backend: Node.js + Express + TypeScript
- Database: PostgreSQL
- Caching: Redis
- Queue System: BullMQ
- Object Storage: MinIO (S3-compatible)
- Payments: Razorpay (Test Mode)
- Containerization: Docker
- Orchestration: Kubernetes
## Features
- Authentication (JWT-based)
- Authorization (RBAC)
- Cart Management
- Order Processing
- Payment Integration (Razorpay)
- Redis Caching
- Background Jobs with BullMQ
- File Uploads (S3-compatible via MinIO)
- Rate Limiting
- Modular Architecture
## Project Diagrams
### Project Architecture
<img width="3537" height="1573" alt="image" src="https://github.com/user-attachments/assets/668c979a-59b8-4962-a746-667a2cfc10cc" />

### RDB Architecture
<img width="1802" height="2146" alt="image" src="https://github.com/user-attachments/assets/aeeb6a77-05f5-4605-bd03-cc97fa9f212d" />
The above figure is not a accurate representation as some changes were made later on.

## Project structure
```
.
├── Dockerfile
├── init.sql
├── k8s
│   ├── app-deployment.yml
│   ├── app-service.yml
│   ├── minio-deployment.yml
│   ├── minio-service.yml
│   ├── postgres-configmap.yml
│   ├── postgres-deployment.yml
│   ├── postgres-service.yml
│   ├── redis-deployment.yml
│   ├── redis-service.yml
│   ├── secrets.yml
│   └── secrets.yml.example
├── makefile
├── package.json
├── package-lock.json
├── src
│   ├── db.ts
│   ├── index.ts
│   ├── middleware
│   │   ├── auth.ts
│   │   ├── rateLimiter.ts
│   │   └── upload.ts
│   ├── queues
│   │   └── orderQueue.ts
│   ├── redis.ts
│   ├── routes
│   │   ├── auth.ts
│   │   ├── cart.ts
│   │   ├── orders.ts
│   │   ├── payments.ts
│   │   └── products.ts
│   ├── s3.ts
│   └── workers
│       └── orderWorker.ts
└── tsconfig.json
```
## Getting Started 
Project Demo and Explanation: youtube.com/ADD THIS LATER.
Clone the repository with:
```
git clone <your-repo-url>
cd ecom-api
```
### Deploying
For deployment, The following is necessary:
- A working kubernetes cluster
- Docker
### Development
Ensure you have all this configure locally:
- PostgreSQL (default port: 5432)
- Redis (default port: 6379)
- MinIO (default port: 9000, UI on port: 9001)
Alternatively, You can deploy the services on Kubernetes and cluster and tweak the services to use `NodePort`.

After doing either of the two, make sure to update the `.env.example` and rename it to `.env`

# Todo
- [ ] Create project demo, setting up and explain each and every component of the project
- [ ] Document deploying
- [ ] Document Development
- [ ] Github Actions
- [ ] Pagination and Filtering on products
- [ ] Swagger Docs for API

