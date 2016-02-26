.class Lcom/qbao/sdk/a/b$3;
.super Lcom/qbao/sdk/b/c;
.source "GamePayAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic db:Lcom/qbao/core/a/c;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/c;)V
    .registers 3

    .prologue
    .line 1
    iput-object p2, p0, Lcom/qbao/sdk/a/b$3;->db:Lcom/qbao/core/a/c;

    .line 132
    invoke-direct {p0, p1}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/qbao/sdk/a/b$3;->db:Lcom/qbao/core/a/c;

    if-eqz v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/qbao/sdk/a/b$3;->db:Lcom/qbao/core/a/c;

    invoke-virtual {v0, p2}, Lcom/qbao/core/a/c;->a(Ljava/lang/String;)V

    .line 152
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/qbao/sdk/a/b$3;->db:Lcom/qbao/core/a/c;

    if-eqz v0, :cond_b

    .line 144
    iget-object v0, p0, Lcom/qbao/sdk/a/b$3;->db:Lcom/qbao/core/a/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/qbao/core/a/c;->b(Ljava/lang/String;)V

    .line 146
    :cond_b
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/qbao/sdk/b/c;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    const-string v0, "https://testsdkserver.qbao.com/sdkpay/v10/sendSms"

    return-object v0
.end method
