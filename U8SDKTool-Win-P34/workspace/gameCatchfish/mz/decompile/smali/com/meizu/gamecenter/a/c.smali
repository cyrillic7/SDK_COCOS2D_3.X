.class final Lcom/meizu/gamecenter/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/a;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/c;->a:Lcom/meizu/gamecenter/a/a;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/c;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v2}, Lcom/meizu/gamecenter/a/a;->f(Lcom/meizu/gamecenter/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/meizu/gamecenter/a/c;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/a;->a(Lcom/meizu/gamecenter/a/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
