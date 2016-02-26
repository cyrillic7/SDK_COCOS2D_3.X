.class final Lcom/baidu/bdgame/sdk/obf/ax$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ba$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ax$16;->a(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax$16;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ax$16;)V
    .registers 2

    .prologue
    .line 369
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 373
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->g(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->f(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method
