.class public Lcom/baidu/wallet/base/widget/SafeKeyboard;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/inputmethodservice/KeyboardView;

.field private c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

.field private d:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

.field private e:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

.field private f:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

.field private g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "~!@#$%^&*()+`-=[]\\{}|;_\':\",./<>?"

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->j:Z

    new-instance v0, Lcom/baidu/wallet/base/widget/p;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/base/widget/p;-><init>(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->k:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->k:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 7

    sget-object v0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/baidu/wallet/base/widget/SafeEditText;

    if-ne v1, v2, :cond_43

    :cond_3f
    check-cast v0, Lcom/baidu/wallet/base/widget/SafeEditText;

    if-nez v0, :cond_44

    :cond_43
    :goto_43
    return-void

    :cond_44
    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->a()I

    move-result v3

    if-eqz v3, :cond_6d

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/widget/SafeEditText;->a(I)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->a()I

    move-result v2

    int-to-char v3, p1

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getMaxLen()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/android/pay/SafePay;->inputKeyboardChar(ICI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeEditText;->setJniText(I)V

    goto :goto_43

    :cond_6d
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_43
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/SafeKeyboard;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/widget/SafeKeyboard;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->j:Z

    return p1
.end method

.method private b()V
    .registers 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->j:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->e:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    if-nez v0, :cond_22

    new-instance v0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v3}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_symbols"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->xml(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->e:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    :cond_22
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->e:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->setShifted(Z)Z

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->e:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    :goto_2b
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c()[I

    move-result-object v4

    move v1, v2

    :goto_36
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_97

    const/16 v0, 0xa

    if-ge v1, v0, :cond_6b

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v2

    :cond_6b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    :cond_6f
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->f:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    if-nez v0, :cond_8c

    new-instance v0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v3}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_symbols_shift"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->xml(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->f:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    :cond_8c
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->f:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->setShifted(Z)Z

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->f:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    goto :goto_2b

    :cond_97
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    sget-object v1, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key with="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(I)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method static synthetic b(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->e()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/wallet/base/widget/SafeKeyboard;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Landroid/inputmethodservice/KeyboardView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method private c()[I
    .registers 9

    const/16 v0, 0xa

    new-array v2, v0, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    move v1, v0

    :goto_20
    if-lez v1, :cond_6b

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const-string v0, "key"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#ran len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_20

    :cond_6b
    return-object v2
.end method

.method static synthetic d(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->e:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    return-object v0
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v2}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_qwerty"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->xml(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    :cond_1d
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    iget-boolean v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->i:Z

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    sget-object v1, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key with="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->f:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    return-object v0
.end method

.method private e()V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    if-ne v3, v2, :cond_24

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    iget-boolean v3, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->i:Z

    if-nez v3, :cond_1f

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    move v0, v1

    :cond_20
    invoke-virtual {v2, v0}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_6

    :cond_24
    iget-object v3, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->e:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    if-ne v2, v3, :cond_2e

    iput-boolean v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->j:Z

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b()V

    goto :goto_6

    :cond_2e
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->f:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    if-ne v2, v0, :cond_6

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->j:Z

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b()V

    goto :goto_6
.end method

.method static synthetic f(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d()V

    return-void
.end method

.method static synthetic g(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b()V

    return-void
.end method


# virtual methods
.method public hideCustomKeyboard()V
    .registers 3

    const-string v0, "key"

    const-string v1, "hideCustomKeyboard"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    return-void
.end method

.method public invalidate()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    :cond_9
    return-void
.end method

.method public isCustomKeyboardVisible()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "key"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCustomKeyboardVisible="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    :goto_2b
    return v1

    :cond_2c
    move v0, v2

    goto :goto_18

    :cond_2e
    move v1, v2

    goto :goto_2b
.end method

.method public isWordSeparator(I)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->h:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public showCustomKeyboard(Lcom/baidu/wallet/base/widget/SafeEditText;)V
    .registers 6

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a:Ljava/lang/String;

    const-string v1, "showCustomKeyboard1111"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_77

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Lcom/baidu/wallet/base/widget/SafeEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p1}, Lcom/baidu/wallet/base/widget/SafeEditText;->getInputType()I

    move-result v0

    iput-boolean v2, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->j:Z

    sget-object v1, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputtype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, v0, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_80

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d()V

    :goto_54
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g:Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/wallet/base/widget/SafeEditText;->getImeOptions()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;->a(Landroid/content/res/Resources;I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c:Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    invoke-interface {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/base/widget/o;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/o;-><init>(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_77
    return-void

    :pswitch_78
    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b()V

    goto :goto_54

    :pswitch_7c
    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d()V

    goto :goto_54

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_78
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method
