.class public Lcom/facebook/katana/features/vault/VaultConstants;
.super Ljava/lang/Object;
.source "VaultConstants.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x3c0

    sput v0, Lcom/facebook/katana/features/vault/VaultConstants;->a:I

    .line 9
    const/16 v0, 0x800

    sput v0, Lcom/facebook/katana/features/vault/VaultConstants;->b:I

    .line 10
    const/16 v0, 0x55

    sput v0, Lcom/facebook/katana/features/vault/VaultConstants;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
