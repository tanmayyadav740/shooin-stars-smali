.class Lcom/vaidilya/collegeconnect/activities/Subscription$2;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vaidilya/collegeconnect/activities/Subscription;->loadSubscriptionStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;


# direct methods
.method constructor <init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 2

    .line 194
    iget-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    const-string v0, "Failed to load subscription status"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 5

    .line 152
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    invoke-static {p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mshowBuyState(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    return-void

    .line 157
    :cond_0
    const-string v0, "is_premium"

    .line 158
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 160
    const-string v1, "premium_expiry"

    .line 161
    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 165
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    if-nez v0, :cond_3

    .line 168
    iget-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    invoke-static {p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mshowBuyState(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    return-void

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    const-string v2, "usage/preference_form/used"

    invoke-static {v1, p1, v2}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mgetInt(Lcom/vaidilya/collegeconnect/activities/Subscription;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    const-string v2, "usage/preference_form/premium_limit"

    invoke-static {v1, p1, v2}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mgetInt(Lcom/vaidilya/collegeconnect/activities/Subscription;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    const-string v2, "usage/college_predictor/used"

    invoke-static {v1, p1, v2}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mgetInt(Lcom/vaidilya/collegeconnect/activities/Subscription;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    const-string v2, "usage/college_predictor/premium_limit"

    invoke-static {v1, p1, v2}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mgetInt(Lcom/vaidilya/collegeconnect/activities/Subscription;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)I

    if-nez v0, :cond_4

    .line 184
    iget-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    invoke-static {p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mshowBuyState(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    return-void

    .line 188
    :cond_4
    iget-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    invoke-static {p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mshowActiveState(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    return-void
.end method
