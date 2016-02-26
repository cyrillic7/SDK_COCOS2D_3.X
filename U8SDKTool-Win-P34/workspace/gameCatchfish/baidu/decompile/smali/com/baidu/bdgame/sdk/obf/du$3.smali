.class final Lcom/baidu/bdgame/sdk/obf/du$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/du;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/du;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/du;->d(Lcom/baidu/bdgame/sdk/obf/du;)Lcom/baidu/bdgame/sdk/obf/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ed;->b()V

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_10a

    .line 181
    :goto_13
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_75

    .line 185
    :goto_16
    return-void

    .line 128
    :sswitch_17
    :try_start_17
    const-string v2, "Alipay trade message"

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "resultStatus={"

    .line 130
    const-string v3, "resultStatus="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 132
    const-string v3, "};memo="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 133
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v3, "Alipay trade status"

    invoke-static {v3, v2}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "9000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/du;->d(Lcom/baidu/bdgame/sdk/obf/du;)Lcom/baidu/bdgame/sdk/obf/ed;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/du;->a(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/du;->a(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "bdp_passport_pay"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_64} :catch_65

    goto :goto_13

    .line 170
    :catch_65
    move-exception v0

    .line 171
    :try_start_66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/du;->d(Lcom/baidu/bdgame/sdk/obf/du;)Lcom/baidu/bdgame/sdk/obf/ed;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_74} :catch_75

    goto :goto_13

    .line 182
    :catch_75
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 137
    :cond_7a
    :try_start_7a
    const-string v3, "8000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/du;->d(Lcom/baidu/bdgame/sdk/obf/du;)Lcom/baidu/bdgame/sdk/obf/ed;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/du;->a(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/du;->a(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "bdp_passport_pay_submit"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 139
    :cond_a8
    const-string v3, "6001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_ad} :catch_65

    move-result v2

    if-eqz v2, :cond_d4

    .line 143
    :try_start_b0
    const-string v2, "memo="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 144
    const-string v3, "{"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 146
    const-string v3, "}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 148
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c7} :catch_108

    move-result-object v1

    .line 153
    :goto_c8
    :try_start_c8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/du;->d(Lcom/baidu/bdgame/sdk/obf/du;)Lcom/baidu/bdgame/sdk/obf/ed;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d2} :catch_65

    goto/16 :goto_13

    .line 158
    :cond_d4
    :try_start_d4
    const-string v2, "memo="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 159
    const-string v3, "{"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 161
    const-string v3, "}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 163
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_eb} :catch_f8

    move-result-object v0

    .line 167
    :goto_ec
    :try_start_ec
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/du;->d(Lcom/baidu/bdgame/sdk/obf/du;)Lcom/baidu/bdgame/sdk/obf/ed;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f6} :catch_65

    goto/16 :goto_13

    .line 165
    :catch_f8
    move-exception v0

    move-object v0, v1

    goto :goto_ec

    .line 177
    :sswitch_fb
    :try_start_fb
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du$3;->a:Lcom/baidu/bdgame/sdk/obf/du;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/du;->d(Lcom/baidu/bdgame/sdk/obf/du;)Lcom/baidu/bdgame/sdk/obf/ed;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_106} :catch_75

    goto/16 :goto_13

    .line 150
    :catch_108
    move-exception v0

    goto :goto_c8

    .line 124
    :sswitch_data_10a
    .sparse-switch
        0x1 -> :sswitch_17
        0x5 -> :sswitch_fb
    .end sparse-switch
.end method
