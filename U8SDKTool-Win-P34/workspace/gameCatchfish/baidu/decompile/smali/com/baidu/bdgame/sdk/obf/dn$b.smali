.class Lcom/baidu/bdgame/sdk/obf/dn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dn;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dn;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->a:Lcom/baidu/bdgame/sdk/obf/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->c:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->b:Landroid/content/Context;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dn$b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/hl;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/hl;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 137
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dn$b$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/dn$b$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dn$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 149
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dn$b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->a:Lcom/baidu/bdgame/sdk/obf/dn;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dn$b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 132
    :goto_14
    return-void

    .line 131
    :cond_15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dn$b;->a()V

    goto :goto_14
.end method
