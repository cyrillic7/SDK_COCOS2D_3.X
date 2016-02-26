.class final Lcom/baidu/bdgame/sdk/obf/mi$8;
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
    .line 142
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->f(Lcom/baidu/bdgame/sdk/obf/mi;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->d(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mi;->a(Lcom/baidu/bdgame/sdk/obf/mi;Z)Z

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->g(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_icon_password_unshow"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    :goto_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->d(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    return-void

    .line 151
    :cond_3a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->d(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mi;->a(Lcom/baidu/bdgame/sdk/obf/mi;Z)Z

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->g(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mi$8;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_icon_password_show"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2e
.end method
