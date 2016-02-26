.class final Lcom/baidu/platformsdk/SapiWebActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnBackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiWebActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$3;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$3;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->h(Lcom/baidu/platformsdk/SapiWebActivity;)V

    .line 183
    return-void
.end method
