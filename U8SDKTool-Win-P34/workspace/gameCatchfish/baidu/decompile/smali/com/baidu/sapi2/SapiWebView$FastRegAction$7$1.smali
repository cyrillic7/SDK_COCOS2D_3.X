.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$7$1;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->onSystemError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;)V
    .registers 2

    .prologue
    .line 2508
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7$1;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7$1;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->i(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    .line 2512
    return-void
.end method
