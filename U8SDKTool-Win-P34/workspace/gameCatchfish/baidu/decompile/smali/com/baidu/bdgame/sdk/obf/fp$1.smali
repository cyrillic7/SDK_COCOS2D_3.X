.class final Lcom/baidu/bdgame/sdk/obf/fp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fp;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fp;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fp;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fp$1;->a:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fp$1;->a:Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Lcom/baidu/bdgame/sdk/obf/fp;)V

    .line 69
    return-void
.end method
