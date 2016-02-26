.class final Lcom/meizu/gamecenter/a/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/av;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/av;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/bb;->a:Lcom/meizu/gamecenter/a/av;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/meizu/gamecenter/a/bb;->a:Lcom/meizu/gamecenter/a/av;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/av;->c(Lcom/meizu/gamecenter/a/av;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 553
    return-void
.end method
