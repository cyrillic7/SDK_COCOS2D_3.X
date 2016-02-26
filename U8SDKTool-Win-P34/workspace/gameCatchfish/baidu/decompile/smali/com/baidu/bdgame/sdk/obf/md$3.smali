.class final Lcom/baidu/bdgame/sdk/obf/md$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/md;->a(ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/md;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/md;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/md$3;->a:Lcom/baidu/bdgame/sdk/obf/md;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 111
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/md$3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaiduServicePhone resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneNo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 116
    if-nez p1, :cond_4d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/md$3;->a:Lcom/baidu/bdgame/sdk/obf/md;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/md;->a(Lcom/baidu/bdgame/sdk/obf/md;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/md$3;->a:Lcom/baidu/bdgame/sdk/obf/md;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/md;->b(Lcom/baidu/bdgame/sdk/obf/md;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/md$3;->a:Lcom/baidu/bdgame/sdk/obf/md;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/md;->b(Lcom/baidu/bdgame/sdk/obf/md;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/md$3$1;

    invoke-direct {v1, p0, p3}, Lcom/baidu/bdgame/sdk/obf/md$3$1;-><init>(Lcom/baidu/bdgame/sdk/obf/md$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_4d
    return-void
.end method
