.class final Lcom/baidu/platformsdk/ThirdPartyLoginActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$1;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$1;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/lp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 94
    return-void
.end method
