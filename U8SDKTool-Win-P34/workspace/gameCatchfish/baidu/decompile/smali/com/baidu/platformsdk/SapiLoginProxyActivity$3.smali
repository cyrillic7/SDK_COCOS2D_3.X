.class final Lcom/baidu/platformsdk/SapiLoginProxyActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiLoginProxyActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$3;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$3;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->finish()V

    .line 147
    return-void
.end method
