.class final Lcom/meizu/gamecenter/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/f;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/f;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/g;->a:Lcom/meizu/gamecenter/a/f;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/gamecenter/a/g;->a:Lcom/meizu/gamecenter/a/f;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/f;->a(Lcom/meizu/gamecenter/a/f;)Lcom/meizu/gamecenter/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->d(Lcom/meizu/gamecenter/a/a;)V

    .line 113
    iget-object v0, p0, Lcom/meizu/gamecenter/a/g;->a:Lcom/meizu/gamecenter/a/f;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/f;->a(Lcom/meizu/gamecenter/a/f;)Lcom/meizu/gamecenter/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->e(Lcom/meizu/gamecenter/a/a;)V

    .line 114
    return-void
.end method
