.class final Lcom/meizu/gamecenter/a/u;
.super Lcom/meizu/c/b;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/t;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/t;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/u;->a:Lcom/meizu/gamecenter/a/t;

    .line 45
    invoke-direct {p0}, Lcom/meizu/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/gamecenter/a/u;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/t;->a(Lcom/meizu/gamecenter/a/t;)V

    .line 54
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/gamecenter/a/u;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v0, p1}, Lcom/meizu/gamecenter/a/t;->a(Lcom/meizu/gamecenter/a/t;Landroid/os/Bundle;)V

    .line 49
    return-void
.end method
