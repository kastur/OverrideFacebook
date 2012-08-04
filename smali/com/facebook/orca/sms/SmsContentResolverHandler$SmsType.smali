.class public final enum Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;
.super Ljava/lang/Enum;
.source "SmsContentResolverHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

.field public static final enum RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

.field public static final enum SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;


# instance fields
.field private typeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    new-instance v0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    .line 49
    new-instance v0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    .line 46
    new-array v0, v4, [Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    sget-object v1, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->RECEIVED:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->SENT:Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->$VALUES:[Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->typeValue:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->$VALUES:[Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    invoke-virtual {v0}, [Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;

    return-object v0
.end method


# virtual methods
.method public final getTypeValue()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/facebook/orca/sms/SmsContentResolverHandler$SmsType;->typeValue:I

    return v0
.end method
