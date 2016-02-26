.class final Lcom/meizu/gamecenter/a/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/ai;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ar;->a:Lcom/meizu/gamecenter/a/ai;

    iput-object p2, p0, Lcom/meizu/gamecenter/a/ar;->b:Ljava/lang/String;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 440
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ar;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {}, Lcom/meizu/gamecenter/a/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 441
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ar;->a:Lcom/meizu/gamecenter/a/ai;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ar;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->i(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 445
    :goto_f
    return-void

    .line 443
    :cond_10
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ar;->a:Lcom/meizu/gamecenter/a/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;Z)V

    goto :goto_f
.end method
