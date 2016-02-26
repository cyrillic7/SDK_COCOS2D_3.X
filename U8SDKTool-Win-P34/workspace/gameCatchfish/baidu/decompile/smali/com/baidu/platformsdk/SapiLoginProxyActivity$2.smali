.class final Lcom/baidu/platformsdk/SapiLoginProxyActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnBackCallback;


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
    .line 136
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$2;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$2;->a:Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->e(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V

    .line 140
    return-void
.end method
