.class final Lcom/duoku/platform/view/common/DKMarqueeTextView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/common/DKMarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private b:B

.field private final c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:F


# direct methods
.method static synthetic a(Lcom/duoku/platform/view/common/DKMarqueeTextView$a;)F
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->j:F

    return v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->j:F

    .line 180
    iget-object v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    if-eqz v0, :cond_10

    .line 182
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 184
    :cond_10
    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 148
    iget-byte v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->b:B

    if-eq v0, v4, :cond_6

    .line 168
    :cond_5
    :goto_5
    return-void

    .line 152
    :cond_6
    invoke-virtual {p0, v4}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "textView"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    .line 157
    if-eqz v0, :cond_5

    .line 158
    iget v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->j:F

    iget v2, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->c:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->j:F

    .line 159
    iget v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->j:F

    iget v2, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->d:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4e

    .line 160
    iget v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->d:F

    iput v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->j:F

    .line 161
    const/4 v1, 0x3

    const-wide/16 v2, 0x4b0

    invoke-virtual {p0, v1, v2, v3}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    :goto_4a
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_5

    .line 163
    :cond_4e
    const-wide/16 v2, 0x21

    invoke-virtual {p0, v4, v2, v3}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4a
.end method

.method a(I)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 187
    if-nez p1, :cond_7

    .line 188
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->b()V

    .line 208
    :cond_6
    :goto_6
    return-void

    .line 191
    :cond_7
    iput p1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->i:I

    .line 192
    iget-object v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 194
    iput-byte v6, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->b:B

    .line 195
    const/4 v1, 0x0

    iput v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->j:F

    .line 196
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 197
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 198
    int-to-float v3, v1

    const/high16 v4, 0x40400000

    div-float/2addr v3, v4

    .line 199
    int-to-float v4, v1

    sub-float v4, v2, v4

    add-float/2addr v4, v3

    iput v4, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->f:F

    .line 200
    iget v4, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->f:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->d:F

    .line 201
    add-float/2addr v3, v2

    iput v3, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->g:F

    .line 202
    int-to-float v1, v1

    const/high16 v3, 0x40c00000

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->h:F

    .line 203
    iget v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->f:F

    add-float/2addr v1, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->e:F

    .line 205
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 206
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v6, v0, v1}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method b()V
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->b:B

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->removeMessages(I)V

    .line 173
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->removeMessages(I)V

    .line 174
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->removeMessages(I)V

    .line 175
    invoke-direct {p0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->e()V

    .line 176
    return-void
.end method

.method c()F
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->j:F

    return v0
.end method

.method d()Z
    .registers 3

    .prologue
    .line 231
    iget-byte v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->b:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 145
    :cond_6
    :goto_6
    return-void

    .line 130
    :pswitch_7
    iput-byte v1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->b:B

    .line 131
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->a()V

    goto :goto_6

    .line 134
    :pswitch_d
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->a()V

    goto :goto_6

    .line 137
    :pswitch_11
    iget-byte v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->b:B

    if-ne v0, v1, :cond_6

    .line 138
    iget v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->i:I

    if-ltz v0, :cond_1f

    .line 139
    iget v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->i:I

    .line 141
    :cond_1f
    iget v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->i:I

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->a(I)V

    goto :goto_6

    .line 128
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method
