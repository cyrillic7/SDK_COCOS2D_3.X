.class Lcom/baidu/sapi2/c$A;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/VoiceLoginResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/VoiceLoginCallback;Lcom/baidu/sapi2/result/VoiceLoginResult;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2792
    iput-object p1, p0, Lcom/baidu/sapi2/c$A;->e:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$A;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$A;->b:Lcom/baidu/sapi2/result/VoiceLoginResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$A;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/c$A;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2813
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2814
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->b:Lcom/baidu/sapi2/result/VoiceLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/VoiceLoginResult;->setResultCode(I)V

    .line 2815
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$A;->b:Lcom/baidu/sapi2/result/VoiceLoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2821
    :goto_23
    return-void

    .line 2818
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 2819
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->e:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$A;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$A;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/c$A;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onFinish()V

    .line 2802
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onStart()V

    .line 2797
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2807
    iget-object v0, p0, Lcom/baidu/sapi2/c$A;->e:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$A;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    invoke-static {v0, v1, p2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;)V

    .line 2808
    return-void
.end method
