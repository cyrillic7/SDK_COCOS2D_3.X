.class Lcom/baidu/sapi2/c$i$a;
.super Ljava/lang/Object;
.source "SapiAccountRepository.java"

# interfaces
.implements Lcom/baidu/sapi2/callback/SapiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c$i;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/SapiCallback",
        "<",
        "Lcom/baidu/sapi2/result/SapiResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/c$i;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c$i;)V
    .registers 2

    .prologue
    .line 3427
    iput-object p1, p0, Lcom/baidu/sapi2/c$i$a;->a:Lcom/baidu/sapi2/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "result"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 3436
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 3442
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 3439
    return-void
.end method

.method public onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 7
    .param p1, "result"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 3430
    iget-object v0, p0, Lcom/baidu/sapi2/c$i$a;->a:Lcom/baidu/sapi2/c$i;

    iget v0, v0, Lcom/baidu/sapi2/c$i;->b:I

    if-lez v0, :cond_1f

    .line 3431
    iget-object v0, p0, Lcom/baidu/sapi2/c$i$a;->a:Lcom/baidu/sapi2/c$i;

    iget-object v0, v0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$i$a;->a:Lcom/baidu/sapi2/c$i;

    iget-object v1, v1, Lcom/baidu/sapi2/c$i;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/c$i$a;->a:Lcom/baidu/sapi2/c$i;

    iget-object v2, v2, Lcom/baidu/sapi2/c$i;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/c$i$a;->a:Lcom/baidu/sapi2/c$i;

    iget-object v3, v3, Lcom/baidu/sapi2/c$i;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/c$i$a;->a:Lcom/baidu/sapi2/c$i;

    iget v4, v4, Lcom/baidu/sapi2/c$i;->b:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3433
    :cond_1f
    return-void
.end method
