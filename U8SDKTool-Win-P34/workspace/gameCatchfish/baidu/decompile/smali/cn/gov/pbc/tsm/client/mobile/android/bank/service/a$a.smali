.class public abstract Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;

    if-eqz v1, :cond_13

    check-cast v0, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;

    goto :goto_3

    :cond_13
    new-instance v0, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a$a;

    invoke-direct {v0, p0}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_de

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->a([B)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_9

    :sswitch_24
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->b([B)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_9

    :sswitch_38
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_4c
    const-string v2, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->a()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5b

    move v0, v1

    :cond_5b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_5f
    const-string v2, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->b()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6e

    move v0, v1

    :cond_6e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_72
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_9

    :sswitch_8a
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    :sswitch_a3
    const-string v2, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b6

    move v0, v1

    :cond_b6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_bb
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_cc
    const-string v0, "cn.gov.pbc.tsm.client.mobile.android.bank.service.IServiceForBank"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_38
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_72
        0x7 -> :sswitch_8a
        0x8 -> :sswitch_a3
        0x9 -> :sswitch_bb
        0xa -> :sswitch_cc
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
