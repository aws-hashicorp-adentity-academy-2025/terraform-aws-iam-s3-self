# HCP Terraform Self-Service용 AWS S3 IAM 모듈

## 개요

이 모듈은 HCP Terraform의 Self-Service 환경에서 사용자가 직접 AWS S3에 대한 IAM 사용자를 생성하고, 읽기(ReadOnly) 또는 읽기/쓰기(ReadWrite) 권한을 선택적으로 부여할 수 있도록 설계되었습니다.

## 사용 방법

1. 이 모듈을 Terraform 구성에 포함시킵니다.
2. 아래 변수들을 통해 사용자별로 필요한 권한과 이름(postfix)을 지정할 수 있습니다.

### 입력 변수
- `postfix` : IAM 사용자 이름 및 정책 이름에 붙는 식별자(예: 사용자별 고유값)
- `policy_type` : 부여할 정책 유형 (`s3_readonly_policy` 또는 `s3_readwrite_policy`)
- `aws_access_key` : AWS Access Key
- `aws_secret_key` : AWS Secret Key

### 예시
```hcl
module "iam_s3_self" {
  source      = "./terraform_aws_iam_s3_self"
  postfix     = "user01"
  policy_type = "s3_readonly_policy" # 또는 "s3_readwrite_policy"
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
}
```

## 주요 기능

- Self-Service 환경에서 IAM 사용자 자동 생성
- S3 읽기 전용 또는 읽기/쓰기 권한을 선택적으로 부여
- 사용자별 postfix로 리소스 구분 가능

## 사전 조건

- AWS 계정 및 접근 권한
- Terraform 설치 및 환경 구성

## 적용 방법

1. Terraform 초기화  
   ```
   terraform init
   ```
2. Terraform 계획 확인  
   ```
   terraform plan
   ```
3. Terraform 적용  
   ```
   terraform apply
   ```

## 참고 사항

- 이 모듈은 HCP Terraform Self-Service 데모 및 테스트 용도로만 사용하시기 바랍니다.
- 실제 운영 환경에서는 최소 권한 원칙(Least Privilege Principle)을 준수하여 권한을 설정하세요.
