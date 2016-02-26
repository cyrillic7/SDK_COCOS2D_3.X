.class final Lcom/meizu/gamecenter/a/i;
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
    iput-object p1, p0, Lcom/meizu/gamecenter/a/i;->a:Lcom/meizu/gamecenter/a/a;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/gamecenter/a/i;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->h(Lcom/meizu/gamecenter/a/a;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 133
    iget-object v0, p0, Lcom/meizu/gamecenter/a/i;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/a;->h(Lcom/meizu/gamecenter/a/a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    :cond_11
    return-void
.end method
