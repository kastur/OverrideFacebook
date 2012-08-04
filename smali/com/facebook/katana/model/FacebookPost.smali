.class public Lcom/facebook/katana/model/FacebookPost;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPost.java"


# static fields
.field public static final TYPE_CHECKIN_POST:I = 0x4

.field public static final TYPE_LINK_ATTACHMENT_POST:I = 0x1

.field public static final TYPE_PHOTO_ATTACHMENT_POST:I = 0x2

.field public static final TYPE_STATUS_POST:I = 0x0

.field public static final TYPE_UNSUPPORTED:I = -0x1

.field public static final TYPE_VIDEO_ATTACHMENT_POST:I = 0x3

.field public static timeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/katana/model/FacebookPost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final actorId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "actor_id"
    .end annotation
.end field

.field public final appId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "app_id"
    .end annotation
.end field

.field public final attribution:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "attribution"
    .end annotation
.end field

.field public final createdTime:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "created_time"
    .end annotation
.end field

.field private final mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "attachment"
    .end annotation
.end field

.field private mCheckinId:Ljava/lang/Long;

.field private final mComments:Lcom/facebook/katana/model/FacebookPost$Comments;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "comments"
    .end annotation
.end field

.field private final mLikes:Lcom/facebook/katana/model/FacebookPost$Likes;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "likes"
    .end annotation
.end field

.field private mPostType:I

.field private mProfile:Lcom/facebook/katana/model/FacebookProfile;

.field public final mTaggedIds:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/util/jsonmirror/types/JMLong;
        }
        jsonFieldName = "tagged_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTaggedProfiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetProfile:Lcom/facebook/katana/model/FacebookProfile;

.field private mUserObject:Ljava/lang/Object;

.field public final message:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "message"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final postId:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "post_id"
    .end annotation
.end field

.field public final targetId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "target_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/katana/model/FacebookPost$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookPost$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookPost;->timeComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mCheckinId:Ljava/lang/Long;

    .line 166
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    .line 167
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPost;->appId:J

    .line 168
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPost;->actorId:J

    .line 169
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPost;->targetId:J

    .line 170
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    .line 172
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mLikes:Lcom/facebook/katana/model/FacebookPost$Likes;

    .line 173
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mComments:Lcom/facebook/katana/model/FacebookPost$Comments;

    .line 174
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mTaggedIds:Ljava/util/List;

    .line 175
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    .line 176
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->attribution:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/lang/String;Lcom/facebook/katana/model/FacebookPost$Attachment;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookPost$Attachment;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPost;->mCheckinId:Ljava/lang/Long;

    .line 141
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    .line 142
    const-wide v1, 0x51a67c8e50L

    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPost;->appId:J

    .line 143
    iput-wide p4, p0, Lcom/facebook/katana/model/FacebookPost;->actorId:J

    .line 144
    iput-wide p6, p0, Lcom/facebook/katana/model/FacebookPost;->targetId:J

    .line 145
    iput-object p8, p0, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    .line 146
    iput-object p9, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    .line 147
    new-instance v1, Lcom/facebook/katana/model/FacebookPost$Likes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/katana/model/FacebookPost$Likes;-><init>(B)V

    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPost;->mLikes:Lcom/facebook/katana/model/FacebookPost$Likes;

    .line 148
    new-instance v1, Lcom/facebook/katana/model/FacebookPost$Comments;

    invoke-direct {v1}, Lcom/facebook/katana/model/FacebookPost$Comments;-><init>()V

    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPost;->mComments:Lcom/facebook/katana/model/FacebookPost$Comments;

    .line 149
    if-eqz p10, :cond_0

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPost;->mTaggedIds:Ljava/util/List;

    .line 154
    :goto_0
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mTaggedProfiles:Ljava/util/Set;

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    .line 157
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->attribution:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPost;->a()V

    .line 159
    return-void

    .line 152
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPost;->mTaggedIds:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 343
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    if-eqz v0, :cond_d

    .line 344
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v1

    .line 346
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    .line 403
    :goto_0
    return-void

    .line 348
    :cond_0
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 354
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->type:Ljava/lang/String;

    .line 355
    const-string v2, "link"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 357
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;->href:Ljava/lang/String;

    .line 359
    if-nez v0, :cond_1

    .line 360
    iput v3, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 361
    :cond_1
    const-string v1, "/apps.facebook.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iput v3, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 363
    :cond_2
    const-string v1, ".applatform.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iput v3, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 366
    :cond_3
    iput v5, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 368
    :cond_4
    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 370
    :cond_5
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 371
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 373
    :cond_6
    iput v3, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 378
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->name:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->caption:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->description:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 380
    :cond_8
    iput v5, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 384
    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 385
    iput v4, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 388
    :cond_a
    iput v3, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto :goto_0

    .line 390
    :cond_b
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 391
    iput v4, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto/16 :goto_0

    .line 394
    :cond_c
    iput v3, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto/16 :goto_0

    .line 397
    :cond_d
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 398
    iput v4, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto/16 :goto_0

    .line 400
    :cond_e
    iput v3, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    goto/16 :goto_0
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPost$Comment;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mComments:Lcom/facebook/katana/model/FacebookPost$Comments;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/model/FacebookPost$Comments;->a(Lcom/facebook/katana/model/FacebookPost$Comment;)V

    .line 254
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPost;->mProfile:Lcom/facebook/katana/model/FacebookProfile;

    .line 196
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPost;->mCheckinId:Ljava/lang/Long;

    .line 217
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPost;->mUserObject:Ljava/lang/Object;

    .line 307
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mComments:Lcom/facebook/katana/model/FacebookPost$Comments;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/model/FacebookPost$Comments;->a(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPost$Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mComments:Lcom/facebook/katana/model/FacebookPost$Comments;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/model/FacebookPost$Comments;->a(Ljava/util/List;)V

    .line 272
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 325
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mTaggedIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 326
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mTaggedProfiles:Ljava/util/Set;

    .line 334
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mLikes:Lcom/facebook/katana/model/FacebookPost$Likes;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/model/FacebookPost$Likes;->a(Z)V

    .line 286
    return-void
.end method

.method public final b()Lcom/facebook/katana/model/FacebookProfile;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mProfile:Lcom/facebook/katana/model/FacebookProfile;

    return-object v0
.end method

.method public final b(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPost;->mTargetProfile:Lcom/facebook/katana/model/FacebookProfile;

    .line 210
    return-void
.end method

.method public final c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mCheckinId:Ljava/lang/Long;

    return-object v0
.end method

.method public final d()Lcom/facebook/katana/model/FacebookProfile;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mTargetProfile:Lcom/facebook/katana/model/FacebookProfile;

    return-object v0
.end method

.method public final e()Lcom/facebook/katana/model/FacebookPost$Attachment;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mAttachment:Lcom/facebook/katana/model/FacebookPost$Attachment;

    return-object v0
.end method

.method public final f()Lcom/facebook/katana/model/FacebookPost$Comments;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mComments:Lcom/facebook/katana/model/FacebookPost$Comments;

    return-object v0
.end method

.method public final g()Lcom/facebook/katana/model/FacebookPost$Likes;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mLikes:Lcom/facebook/katana/model/FacebookPost$Likes;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/facebook/katana/model/FacebookPost;->mPostType:I

    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mUserObject:Ljava/lang/Object;

    return-object v0
.end method

.method public final j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->mTaggedProfiles:Ljava/util/Set;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/katana/model/FacebookPost$Comments;->canPost:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPost;->g()Lcom/facebook/katana/model/FacebookPost$Likes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/katana/model/FacebookPost$Likes;->canLike:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Comments;->c()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
