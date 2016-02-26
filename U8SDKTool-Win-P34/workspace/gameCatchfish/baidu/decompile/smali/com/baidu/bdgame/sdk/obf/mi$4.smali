.class final Lcom/baidu/bdgame/sdk/obf/mi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mi;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mi;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mi;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mi$4;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$4;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->a(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
