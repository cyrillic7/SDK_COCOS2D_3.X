.class public Lcom/baidu/bdgame/sdk/obf/kt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/kt$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@qq.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "@163.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "@126.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@sina.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "@sohu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@gmail.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kt;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 36
    if-nez p0, :cond_3

    .line 53
    :cond_2
    :goto_2
    return-void

    .line 40
    :cond_3
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    .line 44
    check-cast p0, Landroid/widget/AutoCompleteTextView;

    .line 45
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 46
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kt$a;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/kt$a;-><init>(Landroid/widget/AutoCompleteTextView;)V

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setTag(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kt$a;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b(Landroid/widget/EditText;)V
    .registers 2

    .prologue
    .line 61
    if-nez p0, :cond_3

    .line 79
    :cond_2
    :goto_2
    return-void

    .line 65
    :cond_3
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    .line 69
    check-cast p0, Landroid/widget/AutoCompleteTextView;

    .line 70
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/kt$a;

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/kt$a;

    .line 71
    if-eqz v0, :cond_16

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_2
.end method
