.class public Lcom/baidu/platformsdk/widget/AmazingListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/by;
.implements Lcom/baidu/bdgame/sdk/obf/lr$a;
.implements Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

.field c:Z

.field private d:Landroid/view/View;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lcom/baidu/bdgame/sdk/obf/lr;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/baidu/platformsdk/widget/AmazingListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platformsdk/widget/AmazingListView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    .line 155
    return-void
.end method

.method private a(Lcom/baidu/platformsdk/widget/AmazingLoadingBar;)V
    .registers 3

    .prologue
    .line 162
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    .line 163
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    invoke-virtual {v0, p0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->a(Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;)V

    .line 164
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingListView;->removeFooterView(Landroid/view/View;)Z

    .line 205
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    .line 206
    return-void
.end method

.method public a(I)V
    .registers 8

    .prologue
    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    if-nez v1, :cond_9

    .line 134
    :cond_8
    :goto_8
    return-void

    .line 95
    :cond_9
    iget-object v1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->h:Lcom/baidu/bdgame/sdk/obf/lr;

    invoke-virtual {v1, p1}, Lcom/baidu/bdgame/sdk/obf/lr;->c(I)I

    move-result v1

    .line 96
    packed-switch v1, :pswitch_data_6e

    goto :goto_8

    .line 98
    :pswitch_13
    iput-boolean v2, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->e:Z

    goto :goto_8

    .line 103
    :pswitch_16
    iget-object v1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->h:Lcom/baidu/bdgame/sdk/obf/lr;

    iget-object v3, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {v1, v3, p1, v0}, Lcom/baidu/bdgame/sdk/obf/lr;->a(Landroid/view/View;II)V

    .line 104
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 105
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    iget v1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->f:I

    iget v3, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->g:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 107
    :cond_2e
    iput-boolean v5, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->e:Z

    goto :goto_8

    .line 112
    :pswitch_31
    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/widget/AmazingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_8

    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 115
    iget-object v3, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 118
    if-ge v1, v3, :cond_6c

    .line 119
    sub-int/2addr v1, v3

    .line 120
    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    iget-object v4, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v0, v3

    .line 125
    :goto_50
    iget-object v3, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->h:Lcom/baidu/bdgame/sdk/obf/lr;

    iget-object v4, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {v3, v4, p1, v0}, Lcom/baidu/bdgame/sdk/obf/lr;->a(Landroid/view/View;II)V

    .line 126
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_69

    .line 127
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    iget v3, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->f:I

    iget v4, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->g:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 129
    :cond_69
    iput-boolean v5, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->e:Z

    goto :goto_8

    :cond_6c
    move v1, v2

    .line 123
    goto :goto_50

    .line 96
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_31
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 42
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingListView;->setFadingEdgeLength(I)V

    .line 50
    :cond_a
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->requestLayout()V

    .line 51
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    if-eqz v0, :cond_15

    .line 211
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingListView;->addFooterView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->a()V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    .line 215
    :cond_15
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    if-eqz v0, :cond_d

    .line 224
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->b()V

    .line 226
    :cond_d
    return-void
.end method

.method public d()Landroid/view/View;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->e:Z

    if-eqz v0, :cond_10

    .line 140
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/platformsdk/widget/AmazingListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 142
    :cond_10
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    return v0
.end method

.method public f()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->c:Z

    if-eqz v0, :cond_18

    .line 231
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->a()V

    .line 232
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->h:Lcom/baidu/bdgame/sdk/obf/lr;

    iget-object v1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->h:Lcom/baidu/bdgame/sdk/obf/lr;

    iget v1, v1, Lcom/baidu/bdgame/sdk/obf/lr;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lr;->f(I)V

    .line 235
    :cond_18
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 84
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 85
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    iget v1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->f:I

    iget v2, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->g:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 86
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingListView;->a(I)V

    .line 88
    :cond_18
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 74
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 75
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/platformsdk/widget/AmazingListView;->measureChild(Landroid/view/View;II)V

    .line 76
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->f:I

    .line 77
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->g:I

    .line 79
    :cond_1c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 69
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowVisibilityChanged(I)V

    .line 57
    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    .line 58
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->i:I

    .line 64
    :cond_d
    :goto_d
    return-void

    .line 59
    :cond_e
    if-nez p1, :cond_d

    .line 60
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->i:I

    if-le v0, v1, :cond_d

    .line 61
    iget v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->i:I

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingListView;->setSelection(I)V

    goto :goto_d
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 24
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/widget/AmazingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v3, 0x0

    .line 172
    instance-of v0, p1, Lcom/baidu/bdgame/sdk/obf/lr;

    if-nez v0, :cond_2e

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/platformsdk/widget/AmazingListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must use adapter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/baidu/bdgame/sdk/obf/lr;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2e
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->b:Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    if-nez v0, :cond_49

    .line 176
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_amazing_loading_view"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/baidu/platformsdk/widget/AmazingListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;

    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingListView;->a(Lcom/baidu/platformsdk/widget/AmazingLoadingBar;)V

    .line 180
    :cond_49
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->h:Lcom/baidu/bdgame/sdk/obf/lr;

    if-eqz v0, :cond_55

    .line 181
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->h:Lcom/baidu/bdgame/sdk/obf/lr;

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/lr;->a(Lcom/baidu/bdgame/sdk/obf/lr$a;)V

    .line 182
    invoke-virtual {p0, v3}, Lcom/baidu/platformsdk/widget/AmazingListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_55
    move-object v0, p1

    .line 185
    check-cast v0, Lcom/baidu/bdgame/sdk/obf/lr;

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingListView;->h:Lcom/baidu/bdgame/sdk/obf/lr;

    move-object v0, p1

    .line 186
    check-cast v0, Lcom/baidu/bdgame/sdk/obf/lr;

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/lr;->a(Lcom/baidu/bdgame/sdk/obf/lr$a;)V

    move-object v0, p1

    .line 187
    check-cast v0, Lcom/baidu/bdgame/sdk/obf/lr;

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 189
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-super {p0, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 191
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    invoke-super {p0, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 193
    return-void
.end method
