.class public Lcom/facebook/orca/contacts/data/EmailAddressUtils;
.super Ljava/lang/Object;
.source "EmailAddressUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 48
    move v0, v1

    move v2, v1

    move v3, v1

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 52
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 53
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    :cond_0
    :goto_1
    return v1

    .line 56
    :cond_1
    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    .line 57
    if-nez v3, :cond_0

    move v3, v4

    .line 64
    :cond_2
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    if-eqz v3, :cond_3

    move v2, v4

    .line 51
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_4
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_1
.end method
