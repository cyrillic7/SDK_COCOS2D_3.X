.class final Lcom/meizu/gamecenter/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/m;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/m;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/n;->a:Lcom/meizu/gamecenter/a/m;

    iput-object p2, p0, Lcom/meizu/gamecenter/a/n;->b:Landroid/os/Bundle;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/gamecenter/a/n;->a:Lcom/meizu/gamecenter/a/m;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/m;->a(Lcom/meizu/gamecenter/a/m;)Lcom/meizu/gamecenter/a/l;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/l;->a(Lcom/meizu/gamecenter/a/l;)Lcom/meizu/gamecenter/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gamecenter/a/n;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/a/j;->a(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method
