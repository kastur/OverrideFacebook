.class public final enum Lcom/facebook/katana/binding/ManagedDataStore$Mode;
.super Ljava/lang/Enum;
.source "ManagedDataStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/binding/ManagedDataStore$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/binding/ManagedDataStore$Mode;

.field public static final enum SINGLE_REQUEST:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

.field public static final enum SINGLE_REQUEST_BY_KEY:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

.field public static final enum UNRESTRICTED:Lcom/facebook/katana/binding/ManagedDataStore$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    const-string v1, "UNRESTRICTED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/ManagedDataStore$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->UNRESTRICTED:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    .line 102
    new-instance v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    const-string v1, "SINGLE_REQUEST_BY_KEY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/binding/ManagedDataStore$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST_BY_KEY:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    .line 103
    new-instance v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    const-string v1, "SINGLE_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/binding/ManagedDataStore$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    sget-object v1, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->UNRESTRICTED:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST_BY_KEY:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->$VALUES:[Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/binding/ManagedDataStore$Mode;
    .locals 1
    .parameter

    .prologue
    .line 100
    const-class v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/binding/ManagedDataStore$Mode;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->$VALUES:[Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-virtual {v0}, [Lcom/facebook/katana/binding/ManagedDataStore$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    return-object v0
.end method
