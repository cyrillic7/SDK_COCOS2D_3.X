.class final Lcom/baidu/bdgame/sdk/obf/cm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/co$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cm;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cm;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cm;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 213
    packed-switch p1, :pswitch_data_84

    .line 251
    :goto_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->c(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dg;->a()V

    .line 253
    return-void

    .line 215
    :pswitch_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Z)V

    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->b(Lcom/baidu/bdgame/sdk/obf/cm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 222
    :pswitch_24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Z)V

    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->b(Lcom/baidu/bdgame/sdk/obf/cm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 228
    :pswitch_37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Z)V

    .line 230
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->b(Lcom/baidu/bdgame/sdk/obf/cm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 233
    :pswitch_4a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Z)V

    .line 236
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->b(Lcom/baidu/bdgame/sdk/obf/cm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 239
    :pswitch_5d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Z)V

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->b(Lcom/baidu/bdgame/sdk/obf/cm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 244
    :pswitch_70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Z)V

    .line 246
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->b(Lcom/baidu/bdgame/sdk/obf/cm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 213
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_11
        :pswitch_24
        :pswitch_37
        :pswitch_4a
        :pswitch_5d
        :pswitch_70
    .end packed-switch
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->H()Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 257
    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_18

    .line 259
    :cond_6
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cm$1$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/cm$1$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cm$1;)V

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/dj;)Z

    move-result v1

    .line 287
    if-nez v1, :cond_18

    .line 288
    const/4 v0, 0x0

    .line 291
    :cond_18
    return v0
.end method
