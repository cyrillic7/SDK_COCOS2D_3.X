.class final Lcom/meizu/gamecenter/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/ai;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/ai;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ap;->a:Lcom/meizu/gamecenter/a/ai;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 334
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ap;->a:Lcom/meizu/gamecenter/a/ai;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ap;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/ai;->d(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->e(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ap;->a:Lcom/meizu/gamecenter/a/ai;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ap;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/ai;->d(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->h(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ap;->a:Lcom/meizu/gamecenter/a/ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Z)V

    .line 337
    return-void
.end method
