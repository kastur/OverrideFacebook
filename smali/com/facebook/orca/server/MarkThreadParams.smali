.class public Lcom/facebook/orca/server/MarkThreadParams;
.super Ljava/lang/Object;
.source "MarkThreadParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/MarkThreadParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/server/MarkThreadParams$Mark;

.field private final c:Z

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/orca/server/MarkThreadParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/MarkThreadParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/MarkThreadParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/MarkThreadParams$Mark;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/server/MarkThreadParams$Mark;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->b:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->c:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->d:J

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/MarkThreadParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/orca/server/MarkThreadParams$Mark;ZJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/server/MarkThreadParams;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/server/MarkThreadParams;->b:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->c:Z

    .line 37
    iput-wide p4, p0, Lcom/facebook/orca/server/MarkThreadParams;->d:J

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/server/MarkThreadParams$Mark;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->b:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->c:Z

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->d:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->b:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams$Mark;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-wide v0, p0, Lcom/facebook/orca/server/MarkThreadParams;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
