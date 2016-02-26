.class Lcom/baidu/bdgame/sdk/obf/jt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/jt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jt;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jt;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->a:Lcom/baidu/bdgame/sdk/obf/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->b:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->c:Landroid/content/Context;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jt$a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jw;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jw;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/jt$a$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/jt$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jt$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 135
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/jt$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->a:Lcom/baidu/bdgame/sdk/obf/jt;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jt$a;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 118
    :goto_14
    return-void

    .line 117
    :cond_15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jt$a;->a()V

    goto :goto_14
.end method
