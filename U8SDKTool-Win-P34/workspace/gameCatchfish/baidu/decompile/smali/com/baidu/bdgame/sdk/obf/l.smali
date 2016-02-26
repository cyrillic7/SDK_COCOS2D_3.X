.class public Lcom/baidu/bdgame/sdk/obf/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/i;


# static fields
.field public static final a:Ljava/lang/String; = "intent_key_callback_result_code"

.field public static final b:Ljava/lang/String; = "intent_key_callback_result_desc"

.field public static final c:Ljava/lang/String; = "intent_key_callback_extradata"

.field private static f:I


# instance fields
.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/bdgame/sdk/obf/n;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/bdgame/sdk/obf/l;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/n;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/l;->e:Lcom/baidu/bdgame/sdk/obf/n;

    .line 21
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/l;->d:Ljava/lang/Class;

    .line 22
    return-void
.end method

.method private b(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_12

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 30
    :cond_12
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/l;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 52
    sget v0, Lcom/baidu/bdgame/sdk/obf/l;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/bdgame/sdk/obf/l;->f:I

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/l;->g:I

    .line 53
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/l;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 57
    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 36
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/l;->g:I

    if-ne p2, v1, :cond_24

    .line 37
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/l;->e:Lcom/baidu/bdgame/sdk/obf/n;

    if-eqz v1, :cond_23

    .line 38
    const-string v1, "intent_key_callback_result_code"

    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    const-string v1, "intent_key_callback_result_desc"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v2, "intent_key_callback_extradata"

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/l;->e:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-interface {v3, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l;->e:Lcom/baidu/bdgame/sdk/obf/n;

    .line 45
    :cond_23
    const/4 v0, 0x1

    .line 47
    :cond_24
    return v0
.end method
