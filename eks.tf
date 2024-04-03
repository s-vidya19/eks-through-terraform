resource "aws_eks_cluster" "demo" {
    name       =  "eks-cluster-demo"
    role_arn   =  aws_iam_role.demo.arn

    vpc_config {
        subnet_ids = [
            aws_subnet.public-us-east-1a.id,
            aws_subnet.public-us-east-1b.id
            ]

    }

    depends_on = [
        aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
        aws_iam_role_policy_attachment.AmazonEKSServicePolicy,
        aws_iam_role_policy_attachment.AmazonEKSVPCResourceController,
    ]
}
