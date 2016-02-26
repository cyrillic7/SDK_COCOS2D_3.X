.class final Lcom/meizu/gamecenter/a/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/ai;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/ai;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ak;->a:Lcom/meizu/gamecenter/a/ai;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ak;->a:Lcom/meizu/gamecenter/a/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Z)V

    .line 576
    return-void
.end method
