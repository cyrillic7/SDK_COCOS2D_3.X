.class public Lcom/baidu/bdgame/sdk/obf/lx;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Lcom/baidu/platformsdk/widget/AmazingListView;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/lx;->a:I

    .line 25
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/lx;->c:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/lx;->a()V

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/lx;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lx;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/lx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lx;->setFocusable(Z)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lx;->setOutsideTouchable(Z)V

    .line 41
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/lx;->b()V

    .line 42
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lx;->setWidth(I)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lx;->setHeight(I)V

    .line 62
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 45
    new-instance v0, Lcom/baidu/platformsdk/widget/AmazingListView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lx;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/platformsdk/widget/AmazingListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lx;->b:Lcom/baidu/platformsdk/widget/AmazingListView;

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lx;->d:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_14

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lx;->b:Lcom/baidu/platformsdk/widget/AmazingListView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lx;->d:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/widget/AmazingListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 50
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lx;->b:Lcom/baidu/platformsdk/widget/AmazingListView;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lx;->setContentView(Landroid/view/View;)V

    .line 51
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/lx;->d:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 82
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lx;->b:Lcom/baidu/platformsdk/widget/AmazingListView;

    invoke-virtual {v0, p1}, Lcom/baidu/platformsdk/widget/AmazingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lx;->a(Landroid/view/View;)V

    .line 67
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lx;->a(Landroid/view/View;)V

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 74
    return-void
.end method
