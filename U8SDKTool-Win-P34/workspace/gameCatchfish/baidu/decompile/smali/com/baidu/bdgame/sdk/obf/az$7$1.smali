.class final Lcom/baidu/bdgame/sdk/obf/az$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ba$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/az$7;->a(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/az$7;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/az$7;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az$7$1;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 325
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7$1;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->g(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7$1;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->f(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7$1;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->a(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7$1;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->d(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method
