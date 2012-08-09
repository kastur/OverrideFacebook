.class public Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
.super Ljava/lang/Object;
.source "GetDeviceLocationParamsBuilder.java"


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a:J

    .line 11
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->b:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a:J

    return-wide v0
.end method

.method public final a(I)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
    .locals 1
    .parameter

    .prologue
    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->b:I

    .line 28
    return-object p0
.end method

.method public final a(J)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
    .locals 2
    .parameter

    .prologue
    .line 18
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a:J

    .line 19
    return-object p0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->b:I

    return v0
.end method

.method public final c()Lcom/facebook/orca/server/GetDeviceLocationParams;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/GetDeviceLocationParams;-><init>(Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;)V

    return-object v0
.end method
