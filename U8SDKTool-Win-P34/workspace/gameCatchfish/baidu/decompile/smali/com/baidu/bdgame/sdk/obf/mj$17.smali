.class final Lcom/baidu/bdgame/sdk/obf/mj$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/callback/SapiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mj;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/SapiCallback",
        "<",
        "Lcom/baidu/sapi2/result/GetCaptchaResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mj;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mj$17;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/GetCaptchaResult;)V
    .registers 5

    .prologue
    .line 390
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass getCaptcha success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p1, Lcom/baidu/sapi2/result/GetCaptchaResult;->captchaImage:[B

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/baidu/sapi2/result/GetCaptchaResult;->captchaImage:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj$17;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/mj;->l(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/GetCaptchaResult;)V
    .registers 4

    .prologue
    .line 398
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "pass getCaptcha fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 386
    check-cast p1, Lcom/baidu/sapi2/result/GetCaptchaResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mj$17;->b(Lcom/baidu/sapi2/result/GetCaptchaResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$17;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mj;->c(Lcom/baidu/bdgame/sdk/obf/mj;Z)V

    .line 410
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$17;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mj;->c(Lcom/baidu/bdgame/sdk/obf/mj;Z)V

    .line 404
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$17;->a:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->h(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 386
    check-cast p1, Lcom/baidu/sapi2/result/GetCaptchaResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mj$17;->a(Lcom/baidu/sapi2/result/GetCaptchaResult;)V

    return-void
.end method
