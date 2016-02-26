.class Lcom/baidu/sapi2/c$B;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/sapi2/result/VoiceRegResult;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;ZLcom/baidu/sapi2/result/VoiceRegResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2693
    iput-object p1, p0, Lcom/baidu/sapi2/c$B;->g:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$B;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-boolean p3, p0, Lcom/baidu/sapi2/c$B;->b:Z

    iput-object p4, p0, Lcom/baidu/sapi2/c$B;->c:Lcom/baidu/sapi2/result/VoiceRegResult;

    iput-object p5, p0, Lcom/baidu/sapi2/c$B;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/c$B;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/c$B;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->g:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2714
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->g:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2715
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->c:Lcom/baidu/sapi2/result/VoiceRegResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/VoiceRegResult;->setResultCode(I)V

    .line 2716
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$B;->c:Lcom/baidu/sapi2/result/VoiceRegResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2722
    :goto_23
    return-void

    .line 2719
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->g:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 2720
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->g:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$B;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$B;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/c$B;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/c$B;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/baidu/sapi2/c$B;->b:Z

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 2703
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 2698
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->g:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2708
    iget-object v0, p0, Lcom/baidu/sapi2/c$B;->g:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$B;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-boolean v2, p0, Lcom/baidu/sapi2/c$B;->b:Z

    invoke-static {v0, v1, p2, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Z)V

    .line 2709
    return-void
.end method
