.class public Lcom/facebook/katana/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 75
    :cond_0
    return-void
.end method

.method public static a(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1, p2, p3}, Ljunit/framework/Assert;->assertEquals(JJ)V

    .line 85
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 246
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 236
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 222
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {p0}, Ljunit/framework/Assert;->assertFalse(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public static a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 24
    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 283
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {p0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 286
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 336
    :cond_0
    return-void
.end method

.method public static b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 323
    invoke-static {}, Lcom/facebook/katana/util/Assert;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 326
    :cond_0
    return-void
.end method
