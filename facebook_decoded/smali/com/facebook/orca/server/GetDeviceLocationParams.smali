.class public Lcom/facebook/orca/server/GetDeviceLocationParams;
.super Ljava/lang/Object;
.source "GetDeviceLocationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/GetDeviceLocationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/orca/server/GetDeviceLocationParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/GetDeviceLocationParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/GetDeviceLocationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->a:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->b:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/GetDeviceLocationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->a:J

    .line 18
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->b:I

    .line 19
    return-void
.end method

.method public static newBuilder()Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParams;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method
