.class final Lcom/baidu/bdgame/sdk/obf/eh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/eh;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eh;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/eh;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eh$2;->a:Lcom/baidu/bdgame/sdk/obf/eh;

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
    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$2;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/lp;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 103
    return-void
.end method
