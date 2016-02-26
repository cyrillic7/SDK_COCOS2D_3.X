.class Lcom/baidu/sapi2/c$d;
.super Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetCaptchaResult;

.field final synthetic c:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;[Ljava/lang/String;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/GetCaptchaResult;)V
    .registers 5
    .param p2, "x0"    # [Ljava/lang/String;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/baidu/sapi2/c$d;->c:Lcom/baidu/sapi2/c;

    iput-object p3, p0, Lcom/baidu/sapi2/c$d;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/c$d;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;[B)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B

    .prologue
    .line 711
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->c:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 712
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->c:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 713
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetCaptchaResult;->setResultCode(I)V

    .line 714
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$d;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 719
    :goto_23
    return-void

    .line 716
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->c:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 717
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->c:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$d;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 694
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 689
    return-void
.end method

.method protected onSuccess([B)V
    .registers 4
    .param p1, "binaryData"    # [B

    .prologue
    .line 698
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->c:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 699
    if-eqz p1, :cond_1d

    .line 700
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetCaptchaResult;->setResultCode(I)V

    .line 701
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    iput-object p1, v0, Lcom/baidu/sapi2/result/GetCaptchaResult;->captchaImage:[B

    .line 702
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$d;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 707
    :goto_1c
    return-void

    .line 704
    :cond_1d
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetCaptchaResult;->setResultCode(I)V

    .line 705
    iget-object v0, p0, Lcom/baidu/sapi2/c$d;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$d;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_1c
.end method
