.class public Lcom/duoku/platform/ui/DKContainerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;,
        Lcom/duoku/platform/ui/DKContainerActivity$a;
    }
.end annotation


# static fields
.field private static h:Lcom/duoku/platform/util/k;

.field private static i:Ljava/lang/String;

.field private static synthetic j:[I


# instance fields
.field a:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

.field private b:Lcom/duoku/platform/view/a;

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/duoku/platform/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/duoku/platform/ui/DKContainerActivity$a;

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    .line 56
    const-string v0, "com.duoku.close"

    sput-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->f:Z

    .line 36
    return-void
.end method

.method private a(I)Lcom/duoku/platform/view/a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 374
    .line 375
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 377
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v1

    .line 389
    :goto_e
    return-object v0

    .line 379
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a;

    .line 381
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v3, p1, :cond_7

    goto :goto_e
.end method

.method static synthetic a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    return-object v0
.end method

.method private a(Lcom/duoku/platform/view/a;)V
    .registers 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method static synthetic c()[I
    .registers 3

    .prologue
    .line 36
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->j:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/c/c;->values()[Lcom/duoku/platform/c/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/duoku/platform/c/c;->c:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_1b5

    :goto_15
    :try_start_15
    sget-object v1, Lcom/duoku/platform/c/c;->G:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1b2

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/duoku/platform/c/c;->E:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_29} :catch_1af

    :goto_29
    :try_start_29
    sget-object v1, Lcom/duoku/platform/c/c;->D:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_1ac

    :goto_33
    :try_start_33
    sget-object v1, Lcom/duoku/platform/c/c;->B:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_1a9

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/duoku/platform/c/c;->H:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_1a6

    :goto_47
    :try_start_47
    sget-object v1, Lcom/duoku/platform/c/c;->A:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_1a3

    :goto_51
    :try_start_51
    sget-object v1, Lcom/duoku/platform/c/c;->z:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_1a0

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_19d

    :goto_65
    :try_start_65
    sget-object v1, Lcom/duoku/platform/c/c;->C:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_19a

    :goto_6f
    :try_start_6f
    sget-object v1, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_197

    :goto_79
    :try_start_79
    sget-object v1, Lcom/duoku/platform/c/c;->y:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_194

    :goto_83
    :try_start_83
    sget-object v1, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_191

    :goto_8d
    :try_start_8d
    sget-object v1, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_97} :catch_18e

    :goto_97
    :try_start_97
    sget-object v1, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_18b

    :goto_a1
    :try_start_a1
    sget-object v1, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ab} :catch_188

    :goto_ab
    :try_start_ab
    sget-object v1, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b5} :catch_185

    :goto_b5
    :try_start_b5
    sget-object v1, Lcom/duoku/platform/c/c;->v:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_bf} :catch_182

    :goto_bf
    :try_start_bf
    sget-object v1, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_c9} :catch_17f

    :goto_c9
    :try_start_c9
    sget-object v1, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d3} :catch_17c

    :goto_d3
    :try_start_d3
    sget-object v1, Lcom/duoku/platform/c/c;->h:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_dd} :catch_179

    :goto_dd
    :try_start_dd
    sget-object v1, Lcom/duoku/platform/c/c;->l:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e7} :catch_176

    :goto_e7
    :try_start_e7
    sget-object v1, Lcom/duoku/platform/c/c;->m:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_f1} :catch_173

    :goto_f1
    :try_start_f1
    sget-object v1, Lcom/duoku/platform/c/c;->o:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_fb} :catch_171

    :goto_fb
    :try_start_fb
    sget-object v1, Lcom/duoku/platform/c/c;->g:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_104} :catch_16f

    :goto_104
    :try_start_104
    sget-object v1, Lcom/duoku/platform/c/c;->n:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_10e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_10e} :catch_16d

    :goto_10e
    :try_start_10e
    sget-object v1, Lcom/duoku/platform/c/c;->j:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_118} :catch_16b

    :goto_118
    :try_start_118
    sget-object v1, Lcom/duoku/platform/c/c;->k:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_122} :catch_169

    :goto_122
    :try_start_122
    sget-object v1, Lcom/duoku/platform/c/c;->i:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12c} :catch_167

    :goto_12c
    :try_start_12c
    sget-object v1, Lcom/duoku/platform/c/c;->d:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_135} :catch_165

    :goto_135
    :try_start_135
    sget-object v1, Lcom/duoku/platform/c/c;->e:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_13e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_135 .. :try_end_13e} :catch_163

    :goto_13e
    :try_start_13e
    sget-object v1, Lcom/duoku/platform/c/c;->f:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13e .. :try_end_147} :catch_161

    :goto_147
    :try_start_147
    sget-object v1, Lcom/duoku/platform/c/c;->b:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_150} :catch_15f

    :goto_150
    :try_start_150
    sget-object v1, Lcom/duoku/platform/c/c;->a:Lcom/duoku/platform/c/c;

    invoke-virtual {v1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_159} :catch_15d

    :goto_159
    sput-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->j:[I

    goto/16 :goto_4

    :catch_15d
    move-exception v1

    goto :goto_159

    :catch_15f
    move-exception v1

    goto :goto_150

    :catch_161
    move-exception v1

    goto :goto_147

    :catch_163
    move-exception v1

    goto :goto_13e

    :catch_165
    move-exception v1

    goto :goto_135

    :catch_167
    move-exception v1

    goto :goto_12c

    :catch_169
    move-exception v1

    goto :goto_122

    :catch_16b
    move-exception v1

    goto :goto_118

    :catch_16d
    move-exception v1

    goto :goto_10e

    :catch_16f
    move-exception v1

    goto :goto_104

    :catch_171
    move-exception v1

    goto :goto_fb

    :catch_173
    move-exception v1

    goto/16 :goto_f1

    :catch_176
    move-exception v1

    goto/16 :goto_e7

    :catch_179
    move-exception v1

    goto/16 :goto_dd

    :catch_17c
    move-exception v1

    goto/16 :goto_d3

    :catch_17f
    move-exception v1

    goto/16 :goto_c9

    :catch_182
    move-exception v1

    goto/16 :goto_bf

    :catch_185
    move-exception v1

    goto/16 :goto_b5

    :catch_188
    move-exception v1

    goto/16 :goto_ab

    :catch_18b
    move-exception v1

    goto/16 :goto_a1

    :catch_18e
    move-exception v1

    goto/16 :goto_97

    :catch_191
    move-exception v1

    goto/16 :goto_8d

    :catch_194
    move-exception v1

    goto/16 :goto_83

    :catch_197
    move-exception v1

    goto/16 :goto_79

    :catch_19a
    move-exception v1

    goto/16 :goto_6f

    :catch_19d
    move-exception v1

    goto/16 :goto_65

    :catch_1a0
    move-exception v1

    goto/16 :goto_5b

    :catch_1a3
    move-exception v1

    goto/16 :goto_51

    :catch_1a6
    move-exception v1

    goto/16 :goto_47

    :catch_1a9
    move-exception v1

    goto/16 :goto_3d

    :catch_1ac
    move-exception v1

    goto/16 :goto_33

    :catch_1af
    move-exception v1

    goto/16 :goto_29

    :catch_1b2
    move-exception v1

    goto/16 :goto_1f

    :catch_1b5
    move-exception v1

    goto/16 :goto_15
.end method

.method private d()V
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 395
    return-void
.end method

.method private e()Lcom/duoku/platform/view/a;
    .registers 4

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 421
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 423
    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    .line 425
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a;

    .line 428
    :cond_14
    return-object v0
.end method

.method private f()Lcom/duoku/platform/view/a;
    .registers 3

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 436
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 438
    if-lez v1, :cond_13

    .line 440
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a;

    .line 443
    :cond_13
    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 532
    new-instance v0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;-><init>(Lcom/duoku/platform/ui/DKContainerActivity;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    .line 533
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 534
    sget-object v1, Lcom/duoku/platform/ui/DKContainerActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    return-void
.end method

.method private h()V
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    if-eqz v0, :cond_9

    .line 546
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->a:Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 549
    :cond_9
    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Lcom/duoku/platform/ui/DKContainerActivity$a;

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->f:Z

    if-nez v0, :cond_29

    .line 558
    new-instance v0, Lcom/duoku/platform/ui/DKContainerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/ui/DKContainerActivity$a;-><init>(Lcom/duoku/platform/ui/DKContainerActivity;Lcom/duoku/platform/ui/DKContainerActivity$a;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Lcom/duoku/platform/ui/DKContainerActivity$a;

    .line 560
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 561
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Lcom/duoku/platform/ui/DKContainerActivity$a;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->f:Z

    .line 566
    :cond_29
    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Lcom/duoku/platform/ui/DKContainerActivity$a;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->f:Z

    if-eqz v0, :cond_10

    .line 582
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->e:Lcom/duoku/platform/ui/DKContainerActivity$a;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->f:Z

    .line 585
    :cond_10
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 404
    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 409
    return-void

    .line 406
    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 6

    .prologue
    .line 212
    if-gtz p3, :cond_3

    .line 227
    :goto_2
    return-void

    .line 217
    :cond_3
    invoke-direct {p0, p3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(I)Lcom/duoku/platform/view/a;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_d

    .line 221
    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/view/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V

    goto :goto_2

    .line 225
    :cond_d
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    const-string v1, "update view failed because couldn\'t find view by viewid"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 7

    .prologue
    .line 143
    sget-object v0, Lcom/duoku/platform/c/b;->t:Lcom/duoku/platform/c/b;

    if-ne v0, p2, :cond_32

    .line 146
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->e()Lcom/duoku/platform/view/a;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_26

    .line 151
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 152
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->m()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->d()V

    .line 156
    :cond_26
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 164
    :goto_31
    return-void

    .line 160
    :cond_32
    iput p4, p0, Lcom/duoku/platform/ui/DKContainerActivity;->g:I

    .line 161
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_31
.end method

.method public a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 169
    invoke-static {}, Lcom/duoku/platform/ui/DKContainerActivity;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 195
    :goto_d
    :pswitch_d
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_16

    .line 197
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    invoke-virtual {p0, p2, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Ljava/lang/Object;Lcom/duoku/platform/view/a;)V

    .line 199
    :cond_16
    return-void

    .line 172
    :pswitch_17
    new-instance v0, Lcom/duoku/platform/view/user/a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    goto :goto_d

    .line 175
    :pswitch_1f
    new-instance v0, Lcom/duoku/platform/view/a/d;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    goto :goto_d

    .line 179
    :pswitch_27
    new-instance v0, Lcom/duoku/platform/view/a/e;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    goto :goto_d

    .line 182
    :pswitch_2f
    new-instance v0, Lcom/duoku/platform/view/a/a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    goto :goto_d

    .line 185
    :pswitch_37
    new-instance v0, Lcom/duoku/platform/view/a/f;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    goto :goto_d

    .line 188
    :pswitch_3f
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/DKFloatWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    goto :goto_d

    .line 169
    nop

    :pswitch_data_48
    .packed-switch 0x10
        :pswitch_17
        :pswitch_d
        :pswitch_1f
        :pswitch_27
        :pswitch_2f
        :pswitch_37
        :pswitch_d
        :pswitch_3f
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Lcom/duoku/platform/view/a;)V
    .registers 5

    .prologue
    .line 203
    invoke-virtual {p2, p1}, Lcom/duoku/platform/view/a;->a(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 205
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/duoku/platform/view/a;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 206
    invoke-direct {p0, p2}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/view/a;)V

    .line 207
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 448
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 451
    if-eqz v0, :cond_18

    .line 453
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 454
    if-eqz v1, :cond_18

    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 459
    :cond_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "DKContainerActivity"

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    .line 63
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 64
    if-eqz v0, :cond_1d

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 70
    :cond_1d
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_8a

    sget v0, Lcom/duoku/platform/util/Constants;->screen_landscape_flag:I

    if-ne v0, v2, :cond_8a

    .line 73
    invoke-virtual {p0, v4}, Lcom/duoku/platform/ui/DKContainerActivity;->setRequestedOrientation(I)V

    .line 82
    :cond_2e
    :goto_2e
    const-string v0, "dk_container"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->setContentView(I)V

    .line 83
    const-string v0, "dk_viewcontainer"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->d:Landroid/widget/RelativeLayout;

    .line 84
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    .line 86
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/ui/DKContainerActivity;)V

    .line 88
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sdk_view_id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "auto_login_state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 91
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dkImportantInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    .line 93
    sget-object v2, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_8e

    .line 95
    sget-object v0, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    .line 133
    :cond_83
    :goto_83
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->i()V

    .line 136
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->g()V

    .line 138
    return-void

    .line 78
    :cond_8a
    invoke-virtual {p0, v2}, Lcom/duoku/platform/ui/DKContainerActivity;->setRequestedOrientation(I)V

    goto :goto_2e

    .line 97
    :cond_8e
    sget-object v2, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_9c

    .line 99
    sget-object v0, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 101
    :cond_9c
    sget-object v2, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_aa

    .line 103
    sget-object v0, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 105
    :cond_aa
    sget-object v2, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v2, v1, :cond_b8

    .line 107
    sget-object v0, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 109
    :cond_b8
    sget-object v2, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v2, v1, :cond_c6

    .line 111
    sget-object v0, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 113
    :cond_c6
    sget-object v2, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    if-ne v2, v1, :cond_d4

    .line 115
    sget-object v1, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 118
    :cond_d4
    sget-object v0, Lcom/duoku/platform/c/c;->v:Lcom/duoku/platform/c/c;

    invoke-virtual {v0}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    if-ne v0, v1, :cond_e2

    .line 120
    sget-object v0, Lcom/duoku/platform/c/c;->v:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 122
    :cond_e2
    sget-object v0, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    invoke-virtual {v0}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    if-ne v0, v1, :cond_f0

    .line 125
    sget-object v0, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_83

    .line 128
    :cond_f0
    sget-object v0, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    invoke-virtual {v0}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    if-ne v0, v1, :cond_83

    .line 130
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dk_operate_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto/16 :goto_83
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 242
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->j()V

    .line 244
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->h()V

    .line 246
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_12

    .line 248
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->d()V

    .line 251
    :cond_12
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->a()V

    .line 254
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/ui/DKContainerActivity;)V

    .line 255
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 334
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5c

    .line 336
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    instance-of v0, v0, Lcom/duoku/platform/floatview/DKFloatWebView;

    if-eqz v0, :cond_13

    .line 339
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    check-cast v0, Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->c()V

    move v0, v1

    .line 369
    :goto_12
    return v0

    .line 342
    :cond_13
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    instance-of v0, v0, Lcom/duoku/platform/view/user/a;

    if-eqz v0, :cond_22

    .line 345
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    check-cast v0, Lcom/duoku/platform/view/user/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/user/a;->o()V

    move v0, v1

    .line 346
    goto :goto_12

    .line 348
    :cond_22
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    instance-of v0, v0, Lcom/duoku/platform/view/a/d;

    if-eqz v0, :cond_31

    .line 351
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    check-cast v0, Lcom/duoku/platform/view/a/d;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/d;->c()V

    move v0, v1

    .line 352
    goto :goto_12

    .line 354
    :cond_31
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    instance-of v0, v0, Lcom/duoku/platform/view/a/f;

    if-eqz v0, :cond_40

    .line 357
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    check-cast v0, Lcom/duoku/platform/view/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/f;->c()V

    move v0, v1

    .line 358
    goto :goto_12

    .line 361
    :cond_40
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_5c

    .line 363
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->f()Lcom/duoku/platform/view/a;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->f()Lcom/duoku/platform/c/c;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/c/b;->t:Lcom/duoku/platform/c/b;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->g()I

    move-result v0

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    move v0, v1

    .line 365
    goto :goto_12

    .line 369
    :cond_5c
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 261
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 262
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->b()V

    .line 263
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_f

    .line 265
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->k()V

    .line 267
    :cond_f
    const-string v0, "deb6af019f"

    invoke-static {p0, v0}, Lcom/duoku/game/DKGameSDK;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppkey"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duoku/game/DKGameSDK;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 276
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 278
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_c

    .line 280
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->j()V

    .line 283
    :cond_c
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    const-string v1, "onRestart"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 290
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 292
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_c

    .line 294
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->h()V

    .line 296
    :cond_c
    const-string v0, "deb6af019f"

    invoke-static {p0, v0}, Lcom/duoku/game/DKGameSDK;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppkey"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duoku/game/DKGameSDK;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 571
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 573
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 305
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 307
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_c

    .line 309
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->i()V

    .line 312
    :cond_c
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 319
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 321
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_c

    .line 323
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity;->b:Lcom/duoku/platform/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->l()V

    .line 326
    :cond_c
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKContainerActivity;->b()V

    .line 327
    sget-object v0, Lcom/duoku/platform/ui/DKContainerActivity;->h:Lcom/duoku/platform/util/k;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 328
    return-void
.end method
