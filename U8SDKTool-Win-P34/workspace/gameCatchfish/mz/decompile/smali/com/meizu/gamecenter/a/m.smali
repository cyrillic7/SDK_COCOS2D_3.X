.class final Lcom/meizu/gamecenter/a/m;
.super Lcom/meizu/a/b;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/l;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/l;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/m;->a:Lcom/meizu/gamecenter/a/l;

    .line 53
    invoke-direct {p0}, Lcom/meizu/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/m;)Lcom/meizu/gamecenter/a/l;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/gamecenter/a/m;->a:Lcom/meizu/gamecenter/a/l;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/gamecenter/a/m;->a:Lcom/meizu/gamecenter/a/l;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/l;->a(Lcom/meizu/gamecenter/a/l;)Lcom/meizu/gamecenter/a/j;

    move-result-object v0

    new-instance v1, Lcom/meizu/gamecenter/a/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/gamecenter/a/o;-><init>(Lcom/meizu/gamecenter/a/m;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/j;->a(Lcom/meizu/gamecenter/a/j;Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/gamecenter/a/m;->a:Lcom/meizu/gamecenter/a/l;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/l;->a(Lcom/meizu/gamecenter/a/l;)Lcom/meizu/gamecenter/a/j;

    move-result-object v0

    new-instance v1, Lcom/meizu/gamecenter/a/n;

    invoke-direct {v1, p0, p1}, Lcom/meizu/gamecenter/a/n;-><init>(Lcom/meizu/gamecenter/a/m;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/j;->a(Lcom/meizu/gamecenter/a/j;Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 74
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 75
    iget-object v0, p0, Lcom/meizu/gamecenter/a/m;->a:Lcom/meizu/gamecenter/a/l;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/l;->a(Lcom/meizu/gamecenter/a/l;)Lcom/meizu/gamecenter/a/j;

    move-result-object v1

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/meizu/gamecenter/a/j;->a(Lcom/meizu/gamecenter/a/j;Landroid/content/Intent;)V

    .line 77
    :cond_19
    return-void
.end method
