.class public Lcom/u8/sdk/InitResult;
.super Ljava/lang/Object;
.source "InitResult.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private isSDKExit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/u8/sdk/InitResult;->isSDKExit:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/u8/sdk/InitResult;->isSDKExit:Z

    iput-object p2, p0, Lcom/u8/sdk/InitResult;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/InitResult;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public isSDKExit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/u8/sdk/InitResult;->isSDKExit:Z

    return v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/InitResult;->extension:Ljava/lang/String;

    return-void
.end method

.method public setSDKExit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/u8/sdk/InitResult;->isSDKExit:Z

    return-void
.end method
