.class Lcom/baidu/bdgame/sdk/obf/kt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private b:Landroid/widget/AutoCompleteTextView;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 6

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->c:[Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->a:Z

    .line 88
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_account_autocomplete_drop_height"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    .line 92
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kt;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->c:[Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 117
    :cond_9
    :goto_9
    return-void

    .line 105
    :cond_a
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 106
    if-lez v1, :cond_16

    .line 107
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 111
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->c:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/bdgame/sdk/obf/kt;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 114
    :cond_37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_adapter_account_email_item"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->c:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_9
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 163
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->a:Z

    .line 158
    return-void

    .line 157
    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    const/4 v0, 0x1

    .line 125
    :goto_e
    iget-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->a:Z

    if-nez v1, :cond_30

    if-eqz v0, :cond_30

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kt$a;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 150
    :cond_2d
    :goto_2d
    return-void

    .line 123
    :cond_2e
    const/4 v0, 0x0

    goto :goto_e

    .line 131
    :cond_30
    if-eqz v0, :cond_5a

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_50

    .line 137
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_2d

    .line 142
    :cond_50
    if-gez v1, :cond_2d

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kt$a;->a(Ljava/lang/String;)V

    goto :goto_2d

    .line 148
    :cond_5a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kt$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_2d
.end method
