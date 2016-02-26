.class public final enum Lcom/duoku/platform/c/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/duoku/platform/c/c;

.field public static final enum B:Lcom/duoku/platform/c/c;

.field public static final enum C:Lcom/duoku/platform/c/c;

.field public static final enum D:Lcom/duoku/platform/c/c;

.field public static final enum E:Lcom/duoku/platform/c/c;

.field public static final enum F:Lcom/duoku/platform/c/c;

.field public static final enum G:Lcom/duoku/platform/c/c;

.field public static final enum H:Lcom/duoku/platform/c/c;

.field private static final synthetic J:[Lcom/duoku/platform/c/c;

.field public static final enum a:Lcom/duoku/platform/c/c;

.field public static final enum b:Lcom/duoku/platform/c/c;

.field public static final enum c:Lcom/duoku/platform/c/c;

.field public static final enum d:Lcom/duoku/platform/c/c;

.field public static final enum e:Lcom/duoku/platform/c/c;

.field public static final enum f:Lcom/duoku/platform/c/c;

.field public static final enum g:Lcom/duoku/platform/c/c;

.field public static final enum h:Lcom/duoku/platform/c/c;

.field public static final enum i:Lcom/duoku/platform/c/c;

.field public static final enum j:Lcom/duoku/platform/c/c;

.field public static final enum k:Lcom/duoku/platform/c/c;

.field public static final enum l:Lcom/duoku/platform/c/c;

.field public static final enum m:Lcom/duoku/platform/c/c;

.field public static final enum n:Lcom/duoku/platform/c/c;

.field public static final enum o:Lcom/duoku/platform/c/c;

.field public static final enum p:Lcom/duoku/platform/c/c;

.field public static final enum q:Lcom/duoku/platform/c/c;

.field public static final enum r:Lcom/duoku/platform/c/c;

.field public static final enum s:Lcom/duoku/platform/c/c;

.field public static final enum t:Lcom/duoku/platform/c/c;

.field public static final enum u:Lcom/duoku/platform/c/c;

.field public static final enum v:Lcom/duoku/platform/c/c;

.field public static final enum w:Lcom/duoku/platform/c/c;

.field public static final enum x:Lcom/duoku/platform/c/c;

.field public static final enum y:Lcom/duoku/platform/c/c;

.field public static final enum z:Lcom/duoku/platform/c/c;


# instance fields
.field private final I:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_UserRegistView"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v4, v2}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->a:Lcom/duoku/platform/c/c;

    .line 5
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_UserFindPwdView"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v5, v2}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->b:Lcom/duoku/platform/c/c;

    .line 6
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_AuToLoginView"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v6, v2}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->c:Lcom/duoku/platform/c/c;

    .line 7
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_RegBindPhone"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v7, v2}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->d:Lcom/duoku/platform/c/c;

    .line 8
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_RegLicence"

    const/16 v2, 0x6a

    invoke-direct {v0, v1, v8, v2}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->e:Lcom/duoku/platform/c/c;

    .line 9
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_UserFindPsdHintView"

    const/4 v2, 0x5

    const/16 v3, 0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->f:Lcom/duoku/platform/c/c;

    .line 11
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayMainView"

    const/4 v2, 0x6

    const/16 v3, 0xc9

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->g:Lcom/duoku/platform/c/c;

    .line 12
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayAlipayView"

    const/4 v2, 0x7

    const/16 v3, 0xca

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->h:Lcom/duoku/platform/c/c;

    .line 13
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayToyCardView"

    const/16 v2, 0x8

    const/16 v3, 0xcb

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->i:Lcom/duoku/platform/c/c;

    .line 14
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayPhoneCardView"

    const/16 v2, 0x9

    const/16 v3, 0xcc

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->j:Lcom/duoku/platform/c/c;

    .line 15
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayTenPayView"

    const/16 v2, 0xa

    const/16 v3, 0xcd

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->k:Lcom/duoku/platform/c/c;

    .line 16
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayBankCardView"

    const/16 v2, 0xb

    const/16 v3, 0xce

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->l:Lcom/duoku/platform/c/c;

    .line 17
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayCreditcardView"

    const/16 v2, 0xc

    const/16 v3, 0xcf

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->m:Lcom/duoku/platform/c/c;

    .line 18
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayMo9View"

    const/16 v2, 0xd

    const/16 v3, 0xd0

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->n:Lcom/duoku/platform/c/c;

    .line 19
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_PayKuBiView"

    const/16 v2, 0xe

    const/16 v3, 0xd1

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->o:Lcom/duoku/platform/c/c;

    .line 21
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_DeskToolsAccountView"

    const/16 v2, 0xf

    const/16 v3, 0x12d

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    .line 22
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_DeskToolsZQView"

    const/16 v2, 0x10

    const/16 v3, 0x12e

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    .line 23
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_DeskToolsCSView"

    const/16 v2, 0x11

    const/16 v3, 0x12f

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    .line 24
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_DeskToolsGiftsView"

    const/16 v2, 0x12

    const/16 v3, 0x130

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    .line 25
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_DeskToolsActView"

    const/16 v2, 0x13

    const/16 v3, 0x133

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    .line 26
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_DeskToolsMessageView"

    const/16 v2, 0x14

    const/16 v3, 0x131

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    .line 29
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_DeskToolsPointView"

    const/16 v2, 0x15

    const/16 v3, 0x132

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->v:Lcom/duoku/platform/c/c;

    .line 31
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_FloatView"

    const/16 v2, 0x16

    const/16 v3, 0x134

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    .line 35
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDUserLoginView"

    const/16 v2, 0x17

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    .line 36
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDUserRegisterView"

    const/16 v2, 0x18

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->y:Lcom/duoku/platform/c/c;

    .line 37
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDForgetPswView"

    const/16 v2, 0x19

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->z:Lcom/duoku/platform/c/c;

    .line 38
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDFixPswView"

    const/16 v2, 0x1a

    const/16 v3, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->A:Lcom/duoku/platform/c/c;

    .line 39
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDBindPhoneView"

    const/16 v2, 0x1b

    const/16 v3, 0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->B:Lcom/duoku/platform/c/c;

    .line 40
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDUpgradeView"

    const/16 v2, 0x1c

    const/16 v3, 0x76

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->C:Lcom/duoku/platform/c/c;

    .line 41
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDBindLoginView"

    const/16 v2, 0x1d

    const/16 v3, 0x77

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->D:Lcom/duoku/platform/c/c;

    .line 42
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BD91ForgetPsw"

    const/16 v2, 0x1e

    const/16 v3, 0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->E:Lcom/duoku/platform/c/c;

    .line 43
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDTYEPLAYERVIEW"

    const/16 v2, 0x1f

    const/16 v3, 0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    .line 44
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BD91FIXPSW"

    const/16 v2, 0x20

    const/16 v3, 0x75

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->G:Lcom/duoku/platform/c/c;

    .line 45
    new-instance v0, Lcom/duoku/platform/c/c;

    const-string v1, "VT_BDExtendView"

    const/16 v2, 0x21

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/c/c;->H:Lcom/duoku/platform/c/c;

    .line 3
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/duoku/platform/c/c;

    sget-object v1, Lcom/duoku/platform/c/c;->a:Lcom/duoku/platform/c/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/c/c;->b:Lcom/duoku/platform/c/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoku/platform/c/c;->c:Lcom/duoku/platform/c/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/duoku/platform/c/c;->d:Lcom/duoku/platform/c/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/duoku/platform/c/c;->e:Lcom/duoku/platform/c/c;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/duoku/platform/c/c;->f:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/duoku/platform/c/c;->g:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/duoku/platform/c/c;->h:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/duoku/platform/c/c;->i:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/duoku/platform/c/c;->j:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/duoku/platform/c/c;->k:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/duoku/platform/c/c;->l:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/duoku/platform/c/c;->m:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/duoku/platform/c/c;->n:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/duoku/platform/c/c;->o:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/duoku/platform/c/c;->v:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/duoku/platform/c/c;->y:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/duoku/platform/c/c;->z:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/duoku/platform/c/c;->A:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/duoku/platform/c/c;->B:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/duoku/platform/c/c;->C:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/duoku/platform/c/c;->D:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/duoku/platform/c/c;->E:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/duoku/platform/c/c;->G:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/duoku/platform/c/c;->H:Lcom/duoku/platform/c/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoku/platform/c/c;->J:[Lcom/duoku/platform/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/duoku/platform/c/c;->I:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/c/c;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/c/c;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/c/c;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/c/c;->J:[Lcom/duoku/platform/c/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/c/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/duoku/platform/c/c;->I:I

    return v0
.end method
