.class Lcom/tencent/tmgp/UpdateManager$3;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmgp/UpdateManager;->showDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmgp/UpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmgp/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmgp/UpdateManager$3;->this$0:Lcom/tencent/tmgp/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-string v0, "update"

    const-string v1, "\u53d6\u6d88-----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/tmgp/UpdateManager$3;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # invokes: Lcom/tencent/tmgp/UpdateManager;->restart()V
    invoke-static {v0}, Lcom/tencent/tmgp/UpdateManager;->access$3(Lcom/tencent/tmgp/UpdateManager;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/tencent/tmgp/UpdateManager$3;->this$0:Lcom/tencent/tmgp/UpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tmgp/UpdateManager;->access$13(Lcom/tencent/tmgp/UpdateManager;Z)V

    return-void
.end method
